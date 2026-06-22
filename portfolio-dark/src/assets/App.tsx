// App.tsx
import React, { useState, useEffect, useRef } from 'react';
import {
  motion,
  useScroll,
  useTransform,
  AnimatePresence,
  useInView,
} from 'framer-motion';
import gsap from 'gsap';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import Hls from 'hls.js';

// Register GSAP plugins
gsap.registerPlugin(ScrollTrigger);

// Loading Screen Component
const LoadingScreen: React.FC<{ onComplete: () => void }> = ({ onComplete }) => {
  const [count, setCount] = useState(0);
  const [activeWordIndex, setActiveWordIndex] = useState(0);
  const roles = ['Design', 'Create', 'Inspire'];

  useEffect(() => {
    let startTime: number | null = null;
    let animationFrameId: number;

    const updateCount = (timestamp: number) => {
      if (!startTime) startTime = timestamp;
      const elapsed = timestamp - startTime;
      const progress = Math.min(elapsed / 2700, 1);
      const newCount = Math.floor(progress * 100);
      setCount(newCount);

      if (progress < 1) {
        animationFrameId = requestAnimationFrame(updateCount);
      } else {
        setTimeout(() => onComplete(), 400);
      }
    };

    animationFrameId = requestAnimationFrame(updateCount);

    const wordInterval = setInterval(() => {
      setActiveWordIndex((prev) => (prev + 1) % roles.length);
    }, 900);

    return () => {
      cancelAnimationFrame(animationFrameId);
      clearInterval(wordInterval);
    };
  }, [onComplete]);

  return (
    <div className="fixed inset-0 z-[9999] bg-bg flex flex-col justify-between p-6 md:p-8">
      <div className="text-left">
        <motion.div
          initial={{ y: -20, opacity: 0 }}
          animate={{ y: 0, opacity: 1 }}
          transition={{ duration: 0.6 }}
          className="text-xs text-muted uppercase tracking-[0.3em]"
        >
          Portfolio
        </motion.div>
      </div>

      <div className="flex-1 flex items-center justify-center">
        <div className="text-center">
          <AnimatePresence mode="wait">
            <motion.div
              key={activeWordIndex}
              initial={{ y: 20, opacity: 0 }}
              animate={{ y: 0, opacity: 1 }}
              exit={{ y: -20, opacity: 0 }}
              transition={{ duration: 0.3 }}
              className="text-4xl md:text-6xl lg:text-7xl font-display italic text-text-primary/80"
            >
              {roles[activeWordIndex]}
            </motion.div>
          </AnimatePresence>
        </div>
      </div>

      <div className="text-right space-y-4">
        <motion.div
          initial={{ scale: 0.9, opacity: 0 }}
          animate={{ scale: 1, opacity: 1 }}
          transition={{ delay: 0.2, duration: 0.5 }}
          className="text-6xl md:text-8xl lg:text-9xl font-display text-text-primary tabular-nums"
        >
          {String(count).padStart(3, '0')}
        </motion.div>
        <div className="w-full h-[3px] bg-stroke/50 rounded-full overflow-hidden">
          <motion.div
            className="accent-gradient h-full"
            style={{ scaleX: count / 100, transformOrigin: 'left' }}
            animate={{ boxShadow: count === 100 ? '0 0 12px rgba(137, 170, 204, 0.6)' : '0 0 8px rgba(137, 170, 204, 0.35)' }}
          />
        </div>
      </div>
    </div>
  );
};

// Hero Background Video Component
const HeroVideo: React.FC = () => {
  const videoRef = useRef<HTMLVideoElement>(null);

  useEffect(() => {
    const video = videoRef.current;
    if (!video) return;

    const src = 'https://stream.mux.com/Aa02T7oM1wH5Mk5EEVDYhbZ1ChcdhRsS2m1NYyx4Ua1g.m3u8';

    if (Hls.isSupported()) {
      const hls = new Hls();
      hls.loadSource(src);
      hls.attachMedia(video);
      hls.on(Hls.Events.MANIFEST_PARSED, () => {
        video.play().catch(e => console.log('Video play failed:', e));
      });
    } else if (video.canPlayType('application/vnd.apple.mpegurl')) {
      video.src = src;
      video.addEventListener('loadedmetadata', () => {
        video.play().catch(e => console.log('Video play failed:', e));
      });
    }
  }, []);

  return (
    <>
      <video
        ref={videoRef}
        autoPlay
        muted
        loop
        playsInline
        className="absolute top-1/2 left-1/2 min-w-full min-h-full object-cover -translate-x-1/2 -translate-y-1/2"
      />
      <div className="absolute inset-0 bg-black/20" />
      <div className="absolute bottom-0 left-0 right-0 h-48 bg-gradient-to-t from-bg to-transparent" />
    </>
  );
};

// Navbar Component
const Navbar: React.FC<{ activeSection: string }> = ({ activeSection }) => {
  const [scrolled, setScrolled] = useState(false);
  const navItems = ['Home', 'Work', 'Resume'];

  useEffect(() => {
    const handleScroll = () => {
      setScrolled(window.scrollY > 100);
    };
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, []);

  return (
    <motion.nav
      initial={{ y: -100, opacity: 0 }}
      animate={{ y: 0, opacity: 1 }}
      transition={{ duration: 0.6, delay: 0.5 }}
      className="fixed top-0 left-0 right-0 z-50 flex justify-center pt-4 md:pt-6 px-4"
    >
      <div
        className={`inline-flex items-center rounded-full backdrop-blur-md border border-white/10 bg-surface px-2 py-2 transition-shadow duration-300 ${
          scrolled ? 'shadow-md shadow-black/10' : ''
        }`}
      >
        {/* Logo */}
        <div className="relative w-9 h-9 rounded-full accent-gradient p-[1.5px] hover:rotate-180 transition-transform duration-500">
          <div className="w-full h-full rounded-full bg-bg flex items-center justify-center">
            <span className="font-display italic text-[13px]">JA</span>
          </div>
        </div>

        {/* Divider */}
        <div className="w-px h-5 bg-stroke mx-1 hidden sm:block" />

        {/* Nav Links */}
        <div className="flex gap-0.5 sm:gap-1">
          {navItems.map((item) => (
            <a
              key={item}
              href={`#${item.toLowerCase()}`}
              className={`text-xs sm:text-sm rounded-full px-3 sm:px-4 py-1.5 sm:py-2 transition-all ${
                activeSection === item.toLowerCase()
                  ? 'text-text-primary bg-stroke/50'
                  : 'text-muted hover:text-text-primary hover:bg-stroke/50'
              }`}
            >
              {item}
            </a>
          ))}
        </div>

        {/* Divider */}
        <div className="w-px h-5 bg-stroke mx-1 hidden sm:block" />

        {/* Say Hi Button */}
        <a
          href="#contact"
          className="relative group text-xs sm:text-sm rounded-full px-3 sm:px-4 py-1.5 sm:py-2 overflow-hidden"
        >
          <span className="absolute inset-[-2px] rounded-full accent-gradient opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
          <span className="relative inline-flex items-center gap-1 bg-surface rounded-full backdrop-blur-md px-2 py-0.5">
            Say hi <span className="text-sm">↗</span>
          </span>
        </a>
      </div>
    </motion.nav>
  );
};

// Project Card Component
const ProjectCard: React.FC<{
  title: string;
  category: string;
  image: string;
  index: number;
}> = ({ title, category, image, index }) => {
  const ref = useRef(null);
  const isInView = useInView(ref, { once: true, margin: '-100px' });

  return (
    <motion.div
      ref={ref}
      initial={{ opacity: 0, y: 50 }}
      animate={isInView ? { opacity: 1, y: 0 } : {}}
      transition={{ duration: 0.6, delay: index * 0.1 }}
      className="group relative bg-surface border border-stroke rounded-3xl overflow-hidden cursor-pointer"
    >
      <div className="aspect-[4/3] overflow-hidden">
        <img
          src={image}
          alt={title}
          className="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105"
        />
      </div>
      <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500" />
      <div className="absolute bottom-0 left-0 right-0 p-6 translate-y-full group-hover:translate-y-0 transition-transform duration-500">
        <div className="bg-white rounded-full px-4 py-2 inline-flex items-center gap-2 shadow-lg">
          <span className="text-bg text-sm font-medium">View —</span>
          <span className="font-display italic text-bg">{title}</span>
        </div>
      </div>
      <div className="absolute top-4 left-4 bg-black/50 backdrop-blur-sm rounded-full px-3 py-1 text-xs text-text-primary">
        {category}
      </div>
    </motion.div>
  );
};

// Journal Entry Component
const JournalEntry: React.FC<{
  title: string;
  readTime: string;
  date: string;
  image: string;
  index: number;
}> = ({ title, readTime, date, image, index }) => {
  const ref = useRef(null);
  const isInView = useInView(ref, { once: true, margin: '-50px' });

  return (
    <motion.div
      ref={ref}
      initial={{ opacity: 0, x: -20 }}
      animate={isInView ? { opacity: 1, x: 0 } : {}}
      transition={{ duration: 0.5, delay: index * 0.1 }}
      className="flex items-center gap-6 p-4 bg-surface/30 hover:bg-surface border border-stroke rounded-[40px] sm:rounded-full transition-all cursor-pointer group"
    >
      <div className="w-16 h-16 rounded-full overflow-hidden flex-shrink-0">
        <img src={image} alt={title} className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
      </div>
      <div className="flex-1">
        <h3 className="font-display italic text-text-primary text-lg">{title}</h3>
        <div className="flex gap-4 text-xs text-muted mt-1">
          <span>{readTime} min read</span>
          <span>{date}</span>
        </div>
      </div>
      <div className="text-muted group-hover:text-text-primary transition-colors px-4">
        →
      </div>
    </motion.div>
  );
};

// Main App Component
const App: React.FC = () => {
  const [isLoading, setIsLoading] = useState(true);
  const [activeSection, setActiveSection] = useState('home');
  const [activeRoleIndex, setActiveRoleIndex] = useState(0);
  const heroRef = useRef<HTMLElement>(null);
  const worksRef = useRef<HTMLElement>(null);
  const journalRef = useRef<HTMLElement>(null);
  const explorationsRef = useRef<HTMLElement>(null);
  const parallaxContainerRef = useRef<HTMLDivElement>(null);
  const col1Ref = useRef<HTMLDivElement>(null);
  const col2Ref = useRef<HTMLDivElement>(null);
  const roles = ['Creative', 'Fullstack', 'Founder', 'Scholar'];

  // Role cycling
  useEffect(() => {
    const interval = setInterval(() => {
      setActiveRoleIndex((prev) => (prev + 1) % roles.length);
    }, 2000);
    return () => clearInterval(interval);
  }, []);

  // GSAP Animations
  useEffect(() => {
    if (isLoading) return;

    // Hero entrance
    const ctx = gsap.context(() => {
      const tl = gsap.timeline({ ease: 'power3.out' });
      tl.fromTo('.name-reveal', { opacity: 0, y: 50 }, { opacity: 1, y: 0, duration: 1.2, delay: 0.1 })
        .fromTo('.blur-in', { opacity: 0, filter: 'blur(10px)', y: 20 }, { opacity: 1, filter: 'blur(0px)', y: 0, duration: 1, stagger: 0.1, delay: 0.3 }, '<');

      // Parallax Columns
      if (parallaxContainerRef.current && col1Ref.current && col2Ref.current) {
        const parallaxSection = document.getElementById('explorations');
        if (parallaxSection) {
          ScrollTrigger.create({
            trigger: parallaxSection,
            start: 'top top',
            end: 'bottom bottom',
            pin: parallaxContainerRef.current,
            pinSpacing: false,
          });

          gsap.to(col1Ref.current, {
            y: -200,
            ease: 'none',
            scrollTrigger: {
              trigger: parallaxSection,
              start: 'top bottom',
              end: 'bottom top',
              scrub: 1,
            },
          });

          gsap.to(col2Ref.current, {
            y: 200,
            ease: 'none',
            scrollTrigger: {
              trigger: parallaxSection,
              start: 'top bottom',
              end: 'bottom top',
              scrub: 1,
            },
          });
        }
      }
    });

    return () => ctx.revert();
  }, [isLoading]);

  // Scroll spy
  useEffect(() => {
    const sections = ['home', 'work', 'resume', 'journal', 'explorations'];
    const observers = sections.map((section) => {
      const element = document.getElementById(section);
      if (!element) return null;

      const observer = new IntersectionObserver(
        ([entry]) => {
          if (entry.isIntersecting) setActiveSection(section);
        },
        { threshold: 0.5, rootMargin: '-80px 0px 0px 0px' }
      );
      observer.observe(element);
      return observer;
    });

    return () => observers.forEach((obs) => obs?.disconnect());
  }, []);

  if (isLoading) {
    return <LoadingScreen onComplete={() => setIsLoading(false)} />;
  }

  return (
    <div className="bg-bg text-text-primary font-body">
      {/* Hero Section */}
      <section id="home" ref={heroRef} className="relative h-screen flex items-center justify-center overflow-hidden">
        <HeroVideo />
        <Navbar activeSection={activeSection} />

        <div className="relative z-10 text-center px-4 max-w-6xl mx-auto">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.8, delay: 0.4 }}
            className="blur-in text-xs text-muted uppercase tracking-[0.3em] mb-8"
          >
            COLLECTION '26
          </motion.div>

          <h1 className="name-reveal text-6xl md:text-8xl lg:text-9xl font-display italic leading-[0.9] tracking-tight text-text-primary mb-6">
            Michael Smith
          </h1>

          <div className="name-reveal text-base md:text-xl text-muted mb-8">
            A{' '}
            <AnimatePresence mode="wait">
              <motion.span
                key={activeRoleIndex}
                initial={{ opacity: 0, y: 8 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: -8 }}
                transition={{ duration: 0.3 }}
                className="font-display italic text-text-primary inline-block"
              >
                {roles[activeRoleIndex]}
              </motion.span>
            </AnimatePresence>{' '}
            lives in Chicago.
          </div>

          <p className="name-reveal text-sm md:text-base text-muted max-w-md mx-auto mb-12">
            Designing seamless digital interactions by focusing on the unique nuances which bring systems to life.
          </p>

          <div className="name-reveal inline-flex gap-4">
            <a
              href="#work"
              className="group relative rounded-full text-sm px-7 py-3.5 transition-all hover:scale-105 overflow-hidden"
            >
              <span className="absolute inset-0 bg-text-primary" />
              <span className="absolute inset-0 accent-gradient opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
              <span className="relative text-bg group-hover:text-text-primary transition-colors">See Works</span>
            </a>
            <a
              href="#contact"
              className="group relative rounded-full text-sm px-7 py-3.5 border-2 border-stroke hover:border-transparent transition-all hover:scale-105"
            >
              <span className="absolute inset-[-2px] rounded-full accent-gradient opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
              <span className="relative">Reach out...</span>
            </a>
          </div>
        </div>

        {/* Scroll Indicator */}
        <div className="absolute bottom-8 left-1/2 -translate-x-1/2 flex flex-col items-center gap-2">
          <span className="text-xs text-muted uppercase tracking-[0.2em]">SCROLL</span>
          <div className="w-px h-10 bg-stroke relative overflow-hidden">
            <div className="absolute top-0 left-0 w-full h-1/2 accent-gradient animate-scroll-down" />
          </div>
        </div>
      </section>

      {/* Selected Works Section */}
      <section id="work" ref={worksRef} className="py-12 md:py-16 bg-bg">
        <div className="max-w-[1200px] mx-auto px-6 md:px-10 lg:px-16">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ duration: 1, ease: [0.25, 0.1, 0.25, 1] }}
            viewport={{ once: true, margin: '-100px' }}
            className="flex flex-col md:flex-row justify-between items-start md:items-end mb-12 gap-4"
          >
            <div>
              <div className="flex items-center gap-3 mb-4">
                <div className="w-8 h-px bg-stroke" />
                <span className="text-xs text-muted uppercase tracking-[0.3em]">Selected Work</span>
              </div>
              <h2 className="text-4xl md:text-5xl font-display">
                Featured <span className="italic">projects</span>
              </h2>
              <p className="text-muted mt-2 max-w-md">
                A selection of projects I've worked on, from concept to launch.
              </p>
            </div>
            <a
              href="#"
              className="group hidden md:inline-flex items-center gap-2 rounded-full px-6 py-3 text-sm border border-stroke hover:border-transparent relative overflow-hidden"
            >
              <span className="absolute inset-[-2px] rounded-full accent-gradient opacity-0 group-hover:opacity-100 transition-opacity" />
              <span className="relative">View all work</span>
              <span className="relative">→</span>
            </a>
          </motion.div>

          <div className="grid grid-cols-1 md:grid-cols-12 gap-5 md:gap-6">
            <div className="md:col-span-7">
              <ProjectCard
                title="Automotive Motion"
                category="Motion Design"
                image="https://images.unsplash.com/photo-1494905998402-395d579af36f?w=800&h=600&fit=crop"
                index={0}
              />
            </div>
            <div className="md:col-span-5">
              <ProjectCard
                title="Urban Architecture"
                category="3D Visualization"
                image="https://images.unsplash.com/photo-1518005020951-eccb494ad742?w=800&h=600&fit=crop"
                index={1}
              />
            </div>
            <div className="md:col-span-5">
              <ProjectCard
                title="Human Perspective"
                category="Photography"
                image="https://images.unsplash.com/photo-1536148935331-408321065b18?w=800&h=600&fit=crop"
                index={2}
              />
            </div>
            <div className="md:col-span-7">
              <ProjectCard
                title="Brand Identity"
                category="Branding"
                image="https://images.unsplash.com/photo-1541562232579-512a21360020?w=800&h=600&fit=crop"
                index={3}
              />
            </div>
          </div>
        </div>
      </section>

      {/* Journal Section */}
      <section id="journal" ref={journalRef} className="py-16 md:py-24 bg-bg">
        <div className="max-w-[1200px] mx-auto px-6 md:px-10 lg:px-16">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            whileInView={{ opacity: 1, y: 0 }}
            transition={{ duration: 1 }}
            viewport={{ once: true }}
            className="flex flex-col md:flex-row justify-between items-start md:items-end mb-12 gap-4"
          >
            <div>
              <div className="flex items-center gap-3 mb-4">
                <div className="w-8 h-px bg-stroke" />
                <span className="text-xs text-muted uppercase tracking-[0.3em]">Journal</span>
              </div>
              <h2 className="text-4xl md:text-5xl font-display">
                Recent <span className="italic">thoughts</span>
              </h2>
              <p className="text-muted mt-2">Insights and stories from my creative journey.</p>
            </div>
            <a
              href="#"
              className="group hidden md:inline-flex items-center gap-2 rounded-full px-6 py-3 text-sm border border-stroke hover:border-transparent relative overflow-hidden"
            >
              <span className="absolute inset-[-2px] rounded-full accent-gradient opacity-0 group-hover:opacity-100 transition-opacity" />
              <span className="relative">View all</span>
            </a>
          </motion.div>

          <div className="space-y-4">
            <JournalEntry
              title="Designing for the digital frontier"
              readTime="5"
              date="Dec 12, 2024"
              image="https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=100&h=100&fit=crop"
              index={0}
            />
            <JournalEntry
              title="The future of web animation"
              readTime="8"
              date="Nov 28, 2024"
              image="https://images.unsplash.com/photo-1558655146-d09347e92766?w=100&h=100&fit=crop"
              index={1}
            />
            <JournalEntry
              title="Finding balance in creativity"
              readTime="4"
              date="Nov 15, 2024"
              image="https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=100&h=100&fit=crop"
              index={2}
            />
            <JournalEntry
              title="AI and human-centered design"
              readTime="6"
              date="Nov 2, 2024"
              image="https://images.unsplash.com/photo-1677442136019-21780ecad995?w=100&h=100&fit=crop"
              index={3}
            />
          </div>
        </div>
      </section>

      {/* Explorations Parallax Gallery */}
      <section id="explorations" ref={explorationsRef} className="relative bg-bg">
        <div ref={parallaxContainerRef} className="relative min-h-[300vh]">
          <div className="sticky top-0 h-screen flex items-center justify-center overflow-hidden">
            {/* Pinned Content */}
            <div className="relative z-10 text-center max-w-4xl mx-auto px-6">
              <motion.div
                initial={{ opacity: 0, y: 30 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.8 }}
                className="mb-8"
              >
                <div className="flex justify-center mb-4">
                  <div className="w-8 h-px bg-stroke" />
                </div>
                <span className="text-xs text-muted uppercase tracking-[0.3em]">Explorations</span>
                <h2 className="text-5xl md:text-7xl font-display mt-4">
                  Visual <span className="italic">playground</span>
                </h2>
                <p className="text-muted mt-4 max-w-md mx-auto">
                  Experimental work pushing boundaries of visual expression.
                </p>
                <a
                  href="#"
                  className="inline-flex items-center gap-2 mt-8 text-sm text-muted hover:text-text-primary transition-colors group"
                >
                  View Dribbble
                  <span className="group-hover:translate-x-1 transition-transform">→</span>
                </a>
              </motion.div>
            </div>

            {/* Parallax Columns */}
            <div className="absolute inset-0 pointer-events-none">
              <div className="max-w-[1400px] mx-auto h-full flex justify-center items-center gap-12 md:gap-40 px-6">
                <div ref={col1Ref} className="flex flex-col gap-8 w-1/2 pointer-events-auto">
                  {[1, 2, 3].map((i) => (
                    <div
                      key={`col1-${i}`}
                      className="aspect-square max-w-[320px] bg-surface rounded-3xl overflow-hidden rotate-3 hover:rotate-0 transition-all duration-500 cursor-pointer"
                      onClick={() => console.log('Lightbox would open')}
                    >
                      <img
                        src={`https://images.unsplash.com/photo-${i === 1 ? '1506905925346-21bda4d32df4' : i === 2 ? '1523712999610-f77fbcfc3843' : '1541701494587-cb58502866ab'}?w=400&h=400&fit=crop`}
                        alt="Exploration"
                        className="w-full h-full object-cover"
                      />
                    </div>
                  ))}
                </div>
                <div ref={col2Ref} className="flex flex-col gap-8 w-1/2 pointer-events-auto">
                  {[4, 5, 6].map((i) => (
                    <div
                      key={`col2-${i}`}
                      className="aspect-square max-w-[320px] bg-surface rounded-3xl overflow-hidden -rotate-3 hover:rotate-0 transition-all duration-500 cursor-pointer"
                      onClick={() => console.log('Lightbox would open')}
                    >
                      <img
                        src={`https://images.unsplash.com/photo-${i === 4 ? '1493246507139-91e8fad9968e' : i === 5 ? '1554087289-73a0c3ac6d33' : '1518837675919-1bd6fa0dbfc0'}?w=400&h=400&fit=crop`}
                        alt="Exploration"
                        className="w-full h-full object-cover"
                      />
                    </div>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* Stats Section */}
      <section className="py-16 md:py-24 bg-bg border-y border-stroke">
        <div className="max-w-[1200px] mx-auto px-6 md:px-10">
          <div className="grid grid-cols-1 md:grid-cols-3 gap-12 text-center">
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5 }}
              viewport={{ once: true }}
            >
              <div className="text-5xl md:text-6xl font-display italic text-text-primary">20+</div>
              <div className="text-sm text-muted mt-2">Years Experience</div>
            </motion.div>
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5, delay: 0.1 }}
              viewport={{ once: true }}
            >
              <div className="text-5xl md:text-6xl font-display italic text-text-primary">95+</div>
              <div className="text-sm text-muted mt-2">Projects Done</div>
            </motion.div>
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.5, delay: 0.2 }}
              viewport={{ once: true }}
            >
              <div className="text-5xl md:text-6xl font-display italic text-text-primary">200%</div>
              <div className="text-sm text-muted mt-2">Satisfied Clients</div>
            </motion.div>
          </div>
        </div>
      </section>

      {/* Contact / Footer */}
      <section id="contact" className="relative bg-bg pt-16 md:pt-20 pb-8 md:pb-12 overflow-hidden">
        {/* Background Video (flipped) */}
        <div className="absolute inset-0 overflow-hidden">
          <div className="relative w-full h-full scale-y-[-1]">
            <HeroVideo />
          </div>
          <div className="absolute inset-0 bg-black/60" />
        </div>

        {/* GSAP Marquee */}
        <div className="relative z-10 mb-16 overflow-hidden">
          <div className="marquee-text whitespace-nowrap text-7xl md:text-8xl font-display italic text-text-primary/10">
            BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE • BUILDING THE FUTURE •
          </div>
        </div>

        {/* CTA */}
        <div className="relative z-10 text-center max-w-4xl mx-auto px-6">
          <motion.div
            initial={{ opacity: 0, scale: 0.95 }}
            whileInView={{ opacity: 1, scale: 1 }}
            transition={{ duration: 0.6 }}
            viewport={{ once: true }}
          >
            <h2 className="text-4xl md:text-6xl font-display italic mb-6">Let's create together</h2>
            <p className="text-muted mb-8 max-w-md mx-auto">
              Have a project in mind? Let's talk about how we can bring your vision to life.
            </p>
            <a
              href="mailto:hello@michaelsmith.com"
              className="group relative inline-flex rounded-full px-8 py-4 text-lg font-medium overflow-hidden"
            >
              <span className="absolute inset-0 bg-text-primary" />
              <span className="absolute inset-[-2px] rounded-full accent-gradient opacity-0 group-hover:opacity-100 transition-opacity duration-300" />
              <span className="relative text-bg group-hover:text-text-primary transition-colors">
                hello@michaelsmith.com
              </span>
            </a>
          </motion.div>
        </div>

        {/* Footer Bar */}
        <div className="relative z-10 max-w-[1200px] mx-auto px-6 md:px-10 mt-20 pt-8 border-t border-stroke/50">
          <div className="flex flex-col sm:flex-row justify-between items-center gap-4 text-sm">
            <div className="flex gap-6">
              {['Twitter', 'LinkedIn', 'Dribbble', 'GitHub'].map((social) => (
                <a key={social} href="#" className="text-muted hover:text-text-primary transition-colors">
                  {social}
                </a>
              ))}
            </div>
            <div className="flex items-center gap-2">
              <span className="relative flex h-2 w-2">
                <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-green-400 opacity-75" />
                <span className="relative inline-flex rounded-full h-2 w-2 bg-green-500" />
              </span>
              <span className="text-muted text-xs">Available for projects</span>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
};

export default App;